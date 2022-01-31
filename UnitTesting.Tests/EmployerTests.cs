using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Controllers;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Converters;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Dto;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Exceptions;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Service;
using Devon4Net.WebAPI.Implementation.Domain.Database;
using Devon4Net.WebAPI.Implementation.Domain.Entities;
using Devon4Net.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
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
            var result = await service.CreateEmployer("Pablo").ConfigureAwait(false);

            //3 assert
            Assert.Equal(employerExpected, result);
        }

        [Fact]
        public void CreateEmployerTestAsyncNameEmpty()
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

            //2 act 3 assert

            Task<ArgumentException> ex = Assert.ThrowsAsync<ArgumentException>(() => service.CreateEmployer(employerWritten.Name));
            Assert.Equal("The 'name' field can not be null.", ex.Result.Message);
        }

        [Fact]
        public void CreateEmployerTestAsyncNameNull()
        {
            //1 arrange
            Employer employerExpected = new Employer();
            EmployerDto employerWritten = new EmployerDto() { Name = null };

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.Create(It.IsAny<string>()))
            .ReturnsAsync(employerExpected);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            //2 act 3 assert

            Task<ArgumentException> ex = Assert.ThrowsAsync<ArgumentException>(() => service.CreateEmployer(employerWritten.Name));
            Assert.Equal("The 'name' field can not be null.", ex.Result.Message);
        }

        [Fact]
        public async Task GetEmployerOkAsync()
        {
            //1 arrange
            Employer employerExpected = new Employer() { Name="Pablo"};
            var employerExpectedList = new List<Employer>() { employerExpected };
            EmployerDto employerExpectedDto = new EmployerDto() { Name = "Pablo" };
            var employerExpectedDtoList = new List<EmployerDto>() { employerExpectedDto};

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.GetEmployer(It.IsAny<Expression<Func<Employer, bool>>>()))
            .ReturnsAsync(employerExpectedList);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            //2 act
            var result = await service.GetEmployer().ConfigureAwait(false);
            var resultJson = JsonConvert.SerializeObject(result.ToList());
            var employerExpectedListJson = JsonConvert.SerializeObject(employerExpectedList);

            //3 assert            
            Assert.Equal(employerExpectedListJson, resultJson);
        }

        [Fact]
        public async Task DeleteEmployerById()
        {
            //1 arrange
            Employer employerDeletedExpected = new Employer() { Id=1 ,Name = "Pablo" };

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.GetFirstOrDefault(It.IsAny<Expression<Func<Employer, bool>>>()))
            .ReturnsAsync(employerDeletedExpected);
            mockRepository.Setup(repository => repository.DeleteEmployerById(It.IsAny<long>()))
            .ReturnsAsync(employerDeletedExpected.Id);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            //2 act
            var result = await service.DeleteEmployerById(1).ConfigureAwait(false);

            //3 assert            
            Assert.Equal(employerDeletedExpected.Id, result);
        }

        [Fact]
        public void DeleteEmployerByIdEmployeeNull()
        {
            //1 arrange
            Employer employerDeletedExpected = new Employer() { Id = 1, Name = "Pablo" };

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.DeleteEmployerById(It.IsAny<long>()))
            .ReturnsAsync(employerDeletedExpected.Id);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            //2 act 3 assert

            Task<ArgumentException> ex = Assert.ThrowsAsync<ArgumentException>(() => service.DeleteEmployerById(1));
            Assert.Equal("The provided Id 1 does not exists", ex.Result.Message);
        }

        [Fact]
        public async Task ModifyEmployerByIdOkAsync()
        {
            //1 arrange
            Employer employerGot = new Employer() { Id = 1, Name = "Pablo" };
            Employer employerUpdatedExpected = new Employer() { Id = 1, Name = "Corcoles" };

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.GetFirstOrDefault(It.IsAny<Expression<Func<Employer, bool>>>()))
            .ReturnsAsync(employerGot);
            mockRepository.Setup(repository => repository.Update(It.IsAny<Employer>(), It.IsAny<bool>()))
            .ReturnsAsync(employerUpdatedExpected);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            //2 act
            var result = await service.ModifyEmployerById(1, "Corcoles").ConfigureAwait(false);
          
            var resultJson = JsonConvert.SerializeObject(result);
            var employerExpectedJson = JsonConvert.SerializeObject(employerUpdatedExpected);

            //3 assert            
            Assert.Equal(employerExpectedJson, resultJson);
        }

        [Fact]
        public async Task ModifyEmployerByIdNull()
        {
            //1 arrange
            Employer employerGot = new Employer() { Id = 1, Name = "Pablo" };
            Employer employerUpdatedExpected = new Employer() { Id = 1, Name = "Corcoles" };

            var mockRepository = new Mock<IEmployerRepository>();
            mockRepository.Setup(repository => repository.Update(It.IsAny<Employer>(), It.IsAny<bool>()))
            .ReturnsAsync(employerUpdatedExpected);

            var mockContext = new Mock<IUnitOfWork<EmployerContext>>();
            mockContext.Setup(context => context.Repository<IEmployerRepository>())
            .Returns(mockRepository.Object);

            var service = new EmployerService(mockContext.Object);

            Task<EmployerNotFoundException> ex = Assert.ThrowsAsync<EmployerNotFoundException>(() => service.ModifyEmployerById(1, "Pablo"));
            Assert.Equal("The employer with id 1 does not exists and is not possible to delete.", ex.Result.Message);
        }
    }
}
