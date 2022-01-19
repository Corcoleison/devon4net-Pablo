using System.ComponentModel.DataAnnotations;

namespace Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Dto
{
    /// <summary>
    /// Employee definition
    /// </summary>
    public class EmployerDto
    {
        /// <summary>
        /// the Id
        /// </summary>
        public long Id { get; set; }
        
        /// <summary>
        /// the Name
        /// </summary>
        [Required]
        public string Name { get; set; }
    }
}
