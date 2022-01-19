using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Dto;
using Devon4Net.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Converters
{
    /// <summary>
    /// TodoConverter
    /// </summary>
    public static class EmployerConverter
    {
        /// <summary>
        /// ModelToDto TODO transformation
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public static EmployerDto ModelToDto(Employer item)
        {
            if (item == null) return new EmployerDto();

            return new EmployerDto
            {
                Id = item.Id,
                Name = item.Name,
            };
        }

    }
}
