# Generated by Django 4.0.5 on 2022-06-26 00:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Chioce',
            new_name='Choice',
        ),
    ]
