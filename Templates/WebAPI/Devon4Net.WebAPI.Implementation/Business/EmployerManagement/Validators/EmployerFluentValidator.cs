using Devon4Net.Infrastructure.FluentValidation;
using Devon4Net.WebAPI.Implementation.Domain.Entities;
using FluentValidation;

namespace Devon4Net.WebAPI.Implementation.Business.EmployeeManagement.Validators
{
    public class EmployerFluentValidator : CustomFluentValidator<Employee>
    {
        public EmployerFluentValidator(bool launchExceptionWhenError) : base(launchExceptionWhenError)
        {
        }

        public override void CustomValidate()
        {
            RuleFor(Employer => Employer.Id).NotNull();
            RuleFor(Employer => Employer.Id).NotEmpty();
            RuleFor(Employer => Employer.Name).NotNull();
            RuleFor(Employer => Employer.Name).NotEmpty();
        }
    }
}
