from django.db import models

class preservedResult(models.Model):
    result_seq = models.AutoField(primary_key=True)
    owner_email = models.EmailField(max_length=254, verbose_name="user_email", blank=False)
    owner_last_name_kr = models.CharField(max_length=32, verbose_name="last_name_kr")
    result_path = models.TextField()
    preserve_dttm = models.DateField(auto_now_add=True, verbose_name="preserve_date")
    
    def __str__(self):
        return self.user_email
