using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Devon4Net.Domain.UnitOfWork.Repository;
using Devon4Net.Infrastructure.Log;
using Devon4Net.WebAPI.Implementation.Domain.Database;
using Devon4Net.WebAPI.Implementation.Domain.Entities;
using Devon4Net.WebAPI.Implementation.Domain.RepositoryInterfaces;

namespace Devon4Net.WebAPI.Implementation.Data.Repositories
{
    /// <summary>
    /// Repository implementation for the Employer
    /// </summary>
    public class EmployerRepository : Repository<Employer>, IEmployerRepository
    {
        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="context"></param>
        public EmployerRepository(EmployerContext context) : base(context)
        {
        }

        /// <summary>
        /// Get TODO method
        /// </summary>
        /// <param name="predicate"></param>
        /// <returns></returns>
        public Task<IList<Employer>> GetEmployer(Expression<Func<Employer, bool>> predicate = null)
        {
            Devon4NetLogger.Debug("GetTodo method from TodoRepository Employerservice");
            return Get(predicate);
        }

        /// <summary>
        /// Gets the TODO by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Task<Employer> GetEmployerById(long id)
        {
            Devon4NetLogger.Debug($"GetTodoById method from repository Employeeervice with value : {id}");
            return GetFirstOrDefault(t => t.Id == id);
        }

        /// <summary>
        /// Creates the TODO
        /// </summary>
        /// <param id="id"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public Task<Employer> Create(string name)
        {
            Devon4NetLogger.Debug($"SetTodo method from repository Employeeervice with value : {name}");
            return Create(new Employer {Name = name});
        }

        /// <summary>
        /// Deletes the TODO by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<long> DeleteEmployerById(long id)
        {
            Devon4NetLogger.Debug($"DeleteTodoById method from repository Employeeervice with value : {id}");
            var deleted = await Delete(t => t.Id == id).ConfigureAwait(false);

            if (deleted)
            {
                return id;
            }

            throw new ApplicationException($"The Todo entity {id} has not been deleted.");
        }
    }
}
