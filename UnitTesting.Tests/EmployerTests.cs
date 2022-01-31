using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Controllers;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Dto;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Service;
using Devon4Net.WebAPI.Implementation.Domain.Database;
using Devon4Net.WebAPI.Implementation.Domain.Entities;
using Devon4Net.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using System;
using System.Threading.Tasks;
using Xunit;

namespace UnitTesting.Tests
{
    public class EmployerTests
    {
        [Fact]
        public async Task CreateEmployerTestAsyncOK()
        {
            //1 arrange
            Employer employerExpected = new Employer() { Name = "Pablo" };
            EmployerDto employerWritten = new EmployerDto() { Name="Pablo"};

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.Create(It.IsAny<string>()))
            .ReturnsAsync(employerExpected);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            //2 act
            var result = await service.CreateEmployer(employerWritten.Name).ConfigureAwait(false);

            //3 assert
            Assert.Equal(employerExpected, result);
        }

        [Fact]
        public async Task CreateEmployerTestAsyncNameEmpty()
        {
            //1 arrange
            Employer employerExpected = new Employer();
            EmployerDto employerWritten = new EmployerDto() { Name = "" };

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.Create(It.IsAny<string>()))
            .ReturnsAsync(employerExpected);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            //2 act
            //var result = await service.CreateEmployer(employerWritten.Name).ConfigureAwait(false);

            Task<ArgumentException> ex = Assert.ThrowsAsync<ArgumentException>(() => service.CreateEmployer(employerWritten.Name));
            Assert.Equal("The 'name' field can not be null.", ex.Result.Message);
        }
    }
}
