<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.2.0/tailwind.min.css">
    <title>Marjan Check in</title>
</head>
<body>

<!-- bacground image : https://static.lematin.ma/files/lematin/images/articles/2022/09/661902d0b04aad4f2c050c9d385047b6.webp -->
<section class="text-gray-600 body-font bg-blue-100">

    <div class="container px-5 py-24 mx-auto flex flex-wrap items-center">

        <div class="lg:w-3/5 md:w-1/2 md:pr-16 lg:pr-0 pr-0">
            <h1 class="title-font font-medium text-3xl text-gray-900">Marjan Check in</h1>
            <p class="leading-relaxed mt-4">This is a simple check in system for Marjan.</p>
        </div>
        <!-- 1. admin  card -->
    <div class="mx-auto flex flex-wrap items-center gap-4">
        <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
            <h2 class="text-gray-900 text-lg font-medium title-font mb-5">Admin</h2>
            <p class="leading-relaxed mb-5">This is link for Admin group.</p>
            <div class="flex items center justify-center">
                <a href="login?role=admin" class="text-white bg-blue-500 border-0 py-2 px-8 focus:outline-none hover:bg-blue-600 rounded text-lg">Login as Admin</a>
            </div>
        </div>
        <!-- 2. admin center card -->
        <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
            <h2 class="text-gray-900 text-lg font-medium title-font mb-5">Admin Center</h2>
            <p class="leading-relaxed mb-5">This is link for Admin Center group.</p>
            <div class="flex items center justify-center">
                <a href="login?role=adminCenter" class="text-white bg-blue-500 border-0 py-2 px-8 focus:outline-none hover:bg-blue-600 rounded text-lg">Login as Admin Center</a>
            </div>
        </div>
        <!-- 3. responsabile card -->
        <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
            <h2 class="text-gray-900 text-lg font-medium title-font mb-5">Responsabile</h2>
            <p class="leading-relaxed mb-5">This is link for Responsabile group.</p>
            <div class="flex items center justify-center">
                <a href="login?role=responsabile" class="text-white bg-blue-500 border-0 py-2 px-8 focus:outline-none hover:bg-blue-600 rounded text-lg">Login as Responsabile</a>
            </div>
        </div>
        <!-- 4. user card -->
        <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
            <h2 class="text-gray-900 text-lg font-medium title-font mb-5">User</h2>
            <p class="leading-relaxed mb-5">This is link for User group.</p>
            <div class="flex items center justify-center">
                <a href="login?role=user" class="text-white bg-blue-500 border-0 py-2 px-8 focus:outline-none hover:bg-blue-600 rounded text-lg">Login as User</a>
            </div>
        </div>
    </div>
    </div>
</section>



</body>
</html>