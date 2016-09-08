import unicode_literals

from django.db import models, migrations
import uuid
import django.utils.timezone

class Migration(migrations.Migration):
    """ Default profile """
    GENDER_CHOICES = (
        (1, _('Male')),
        (2, _('Female')),
    )

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True, verbose_name='ID', auto_created=True)),
                ('user', models.IntegerField()),
                ('gender',
                ('website',
                ('location'),
                ('birth_date'),
                ('about_me'),
                ('end_line_num', models.IntegerField(blank=True, null=True)),
                ('func_name', models.CharField(max_length=300, blank=True, default='')),
                ('exception_raised', models.BooleanField(default=False)),
                ('dynamic', models.BooleanField(default=False)),
            ],
            options={
                'abstract': False,
            },
        ),
    ]

