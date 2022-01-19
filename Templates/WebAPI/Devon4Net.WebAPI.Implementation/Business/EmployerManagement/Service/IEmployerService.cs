using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Dto;
using Devon4Net.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Service
{
    /// <summary>
    /// IEmployeeService
    /// </summary>
    public interface IEmployerService
    {
        /// <summary>
        /// GetEmployee
        /// </summary>
        /// <param name="predicate"></param>
        /// <returns></returns>
        Task<IEnumerable<EmployerDto>> GetEmployer(Expression<Func<Employer, bool>> predicate = null);

        /// <summary>
        /// GetEmployeeById
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Task<Employer> GetEmployerById(long id);

        /// <summary>
        /// CreateEmployee
        /// </summary>
        /// <param name="name"></param>
        /// <param name="surName"></param>
        /// <param name="mail"></param>
        /// <returns></returns>
        Task<Employer> CreateEmployer(string name);

        /// <summary>
        /// DeleteEmployeeById
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Task<long> DeleteEmployerById(long id);

        /// <summary>
        /// ModifyEmployeeById
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <param name="surName"></param>
        /// <param name="mail"></param>
        /// <returns></returns>
        Task<Employer> ModifyEmployerById(long id, string name);
    }
}