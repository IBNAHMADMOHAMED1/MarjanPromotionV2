<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" referrerpolicy="no-referrer" />
  <link rel="icon" href="../../Assets/logo.ico">
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <title>Marjane</title>
</head>
<body>
<div class="flex flex-col w-64 h-screen px-4 py-8 bg-blue-150 border-r dark:bg-gray-900 dark:border-gray-700">
  <img class="w-1/2" src="../../Assets/logo.jpg" >
  <div class="flex flex-col justify-between flex-1 mt-6">
    <nav>
      <a href="ResponsableRayonDashboardServlet" class="flex items-center px-4 py-2 text-gray-700 rounded-md dark:bg-gray-800 dark:text-gray-200 hover:text-gray-700 hover:bg-gray-200">
        <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path
                  d="M19 11H5M19 11C20.1046 11 21 11.8954 21 13V19C21 20.1046 20.1046 21 19 21H5C3.89543 21 3 20.1046 3 19V13C3 11.8954 3.89543 11 5 11M19 11V9C19 7.89543 18.1046 7 17 7M5 11V9C5 7.89543 5.89543 7 7 7M7 7V5C7 3.89543 7.89543 3 9 3H15C16.1046 3 17 3.89543 17 5V7M7 7H17"
                  stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
        </svg>
        <span class="mx-4 font-medium">Dashboard</span>
      </a>
      <a href="promotion" class="flex items-center px-4 py-2 mt-5 text-gray-600 transition-colors duration-300 transform rounded-md dark:text-gray-400 hover:bg-gray-200 dark:hover:bg-gray-700 dark:hover:text-gray-200 hover:text-gray-700">
        <i class="fa-solid fa-tag"></i>
        <span class="mx-4 font-medium">Promotion</span>
      </a>
    </nav>
    <hr class="mt-72 mb-6 border-gray-200 dark:border-gray-600" />
    <div class="flex items-center px-4 -mx-2">
      <img class="object-cover mx-2 rounded-full h-9 w-9" src="https://cdn0.iconfinder.com/data/icons/man-user-human-profile-avatar-person-business/100/10-1User_14-512.png" alt="avatar" />
      <h4 class="mx-2 font-medium text-gray-800 dark:text-gray-200 hover:underline">Responsable de rayon</h4>
      <a href="/" class="ml-auto cursor-pointer">
        <i class="fa-solid fa-right-from-bracket"></i>
      </a>
    </div>
  </div>
</div>
<script src="https://kit.fontawesome.com/d1aca8f508.js" crossorigin="anonymous"></script>
</body>
</html>
