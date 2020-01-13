from django.shortcuts import render
from rest_framework.authtoken.models import Token
from .models import *
from django.contrib.auth.models import User
from django.http import HttpResponseRedirect, Http404, JsonResponse
from django.contrib.auth import get_user_model
from rest_framework import viewsets, status,permissions
from .serializers import *
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.generics import CreateAPIView
from rest_framework.decorators import api_view
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.contrib.auth import login as django_login, logout as django_logout
from rest_framework.authtoken.models import Token
from rest_framework.authentication import TokenAuthentication

# Create your views here.


def index(request):
    return render (request, "build/index.html")

User = get_user_model()
# @permission_classes((AllowAny,))
class LoginView(APIView):
    def post(self, request):
        serializer = LoginSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data["user"]
        if(user != None):
            # django_login(request, user)
            token, created = Token.objects.get_or_create(user=user)
            return Response({"token": token.key}, status=200)
        else:
            return Response("Invalid Login" )

class LogoutView(APIView):
    authentication_classes = (TokenAuthentication, )

    def post(self, request):
        # django_logout(request)
        return Response(status=204)

class InsertView(APIView):
     def post(self, request):
        serializer = UserISerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        # user = serializer.validated_data["user"]
        # django_login(request, user)
        # token, created = Token.objects.get_or_create(user=user)
        for users in User.objects.all():
            print('Hii')
            token = Token.objects.get_or_create(user=users)
            print(token)
            print(users.username)
        return HttpResponseRedirect("")

# @permission_classes((AllowAny,))
class GetView(APIView):
    def get(self,request):
        lists = usr_user.objects.all()
        serializer = UserSerializer(lists,many=True)
        return Response(serializer.data)
