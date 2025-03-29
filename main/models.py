from django.db import models

# Create your models here.

class Note(models.Model):
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.content[:50]}..."
