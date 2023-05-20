
from django import template

register = template.Library()
@register.filter(name="check_choice")
def check_choice(submission_choices, choice_id):
    sub_choice = submission_choices.filter(id=choice_id).values('is_correct')
    return sub_choice[0]['is_correct']