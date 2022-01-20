using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Converters;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Dto;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Exceptions;
using Devon4Net.WebAPI.Implementation.Domain.Database;
using Devon4Net.WebAPI.Implementation.Domain.Entities;
using Devon4Net.WebAPI.Implementation.Domain.RepositoryInterfaces;

namespace Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Service
{
    /// <summary>
    /// Employer service implementation
    /// </summary>
    public class EmployerService: Service<EmployerContext>, IEmployerService
    {
        private readonly IEmployerRepository _employerRepository;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="uoW"></param>
        public EmployerService(IUnitOfWork<EmployerContext> uoW) : base(uoW)
        {
            _employerRepository = uoW.Repository<IEmployerRepository>();
        }

        /// <summary>
        /// Gets the Employer
        /// </summary>
        /// <param name="predicate"></param>
        /// <returns></returns>
        public async Task<IEnumerable<EmployerDto>> GetEmployer(Expression<Func<Employer, bool>> predicate = null)
        {
            Devon4NetLogger.Debug("GetEmployee method from service EmployerService");
            var result = await _employerRepository.GetEmployer(predicate).ConfigureAwait(false);
            return result.Select(EmployerConverter.ModelToDto);
        }

        /// <summary>
        /// Gets the Employer by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Task<Employer> GetEmployerById(long id)
        {
            Devon4NetLogger.Debug($"GetEmployeeById method from service Employeeervice with value : {id}");
            return _employerRepository.GetEmployerById(id);
        }

        /// <summary>
        /// Creates the Employer
        /// </summary>
        /// <param id="id"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public Task<Employer> CreateEmployer(long id, string name)
        {
            Devon4NetLogger.Debug($"SetEmployer method from service Employer service with value : {name}");

            if (string.IsNullOrEmpty(name) || string.IsNullOrWhiteSpace(name))
            {
                throw new ArgumentException("The 'name' field can not be null.");
            }

            return _employerRepository.Create(id, name);
        }

        /// <summary>
        /// Deletes the Employer by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<long> DeleteEmployerById(long id)
        {
            Devon4NetLogger.Debug($"DeleteEmployerById method from service Employeeervice with value : {id}");
            var employee = await _employerRepository.GetFirstOrDefault(t => t.Id == id).ConfigureAwait(false);

            if (employee == null)
            {
                throw new ArgumentException($"The provided Id {id} does not exists");
            }

            return await _employerRepository.DeleteEmployerById(id).ConfigureAwait(false);
        }

        /// <summary>
        /// Modifies te state of the Employee by id
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public async Task<Employer> ModifyEmployerById(long id, string name)
        {
            Devon4NetLogger.Debug($"ModifyEmployerById method from service Employer service with value : {id}");
            var employee = await _employerRepository.GetFirstOrDefault(t => t.Id == id).ConfigureAwait(false);

            if (employee == null)
            {
                throw new EmployerNotFoundException($"The employee with id {id} does not exists and is not possible to delete.");
            }

            employee.Name = name;

            return await _employerRepository.Update(employee).ConfigureAwait(false);
        }
    }
}
