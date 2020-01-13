from rest_framework import serializers
from .models import *
from django.contrib.auth import authenticate
from django.contrib.auth.hashers import make_password
from rest_framework import exceptions
from django.contrib.auth.models import User

class UserSerializer(serializers.ModelSerializer):
  class Meta:
    model = usr_user
    fields = ('userID', 'loginID', 'username')

class UserISerializer(serializers.ModelSerializer):
    # owner = serializers.HiddenField(
    #     default=serializers.CurrentUserDefault()
    # )
    class Meta:
        model = usr_user
        fields = ('userID','loginID','username','password','birthdate','gender')


    def create(self, validated_data):
        # print("werty")
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)
        if password is not None:
            instance.set_password(password)
        instance.save()
        return instance



class LoginSerializer(serializers.Serializer):
    loginID = serializers.CharField()
    password = serializers.CharField()

    def validate(self, data):
        loginID = data.get("loginID", "")
        password = data.get("password", "")

        if loginID and password:
            user = authenticate(loginID=loginID, password=password)
            if user:
                if user.is_active:
                    data["user"] = user
                else:
                    msg = "User is deactivated."
                    raise exceptions.ValidationError(msg)
                    data["user"] = ""
            else:
                msg = "Unable to login with given credentials."
                raise exceptions.ValidationError(msg)
                data["user"] = ""
        else:
            msg = "Must provide username and password both."
            raise exceptions.ValidationError(msg)
            data["user"] = ""
        return data
