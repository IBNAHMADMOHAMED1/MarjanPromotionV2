<%@ page import="controller.VilleController" %>
<%@ page import="entity.Ville" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/webapp\assets\css\custom.css">

    <!-- Fontawesome CDN -->

    <title>Dhasboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/brands.min.css" integrity="sha512-+oRH6u1nDGSm3hH8poU85YFIVTdSnS2f+texdPGrURaJh8hzmhMiZrQth6l56P4ZQmxeZzd2DqVEMqQoJ8J89A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.2.0/tailwind.min.css">
</head>
<body>
<div class="flex flex-col md:flex-row h-screen w-full">
    <div class="bg-gray-800 text-gray-100 flex justify-between md:hidden">
        <a href="#" class="block p-4 text-white font-bold">Brand</a>
        <button class="mobile-menu-button p-4 focus:outline-none focus:bg-gray-700">
            <svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                <title>Menu</title>
                <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"/>
            </svg>
        </button>
    </div>
    <!-- sidebar responsive onclick -->
    <div class="sidebar bg-gray-800 text-gray-100 w-64 space-y-6 py-7 px-2 absolute inset-y-0 left-0 transform -translate-x-full md:relative md:translate-x-0 transition duration-200 ease-in-out">
        <a href="#" class="text-white flex items-center space-x-2 px-4">
            <span class="text-2xl font-semibold">Marjan</span>
        </a>
        <nav>
            <a class="flex items-center text-gray-100 py-4 px-6 border-l-4 border-transparent hover:text-white hover:bg-gray-700" href="#">
                <i class="fas fa-tachometer-alt mr-3"></i>
                Dashboard
            </a>
            <a
                    class="flex items center text-gray-100 opacity-75 hover:opacity-100 py-4 px-6 border-l-4 border-transparent hover:text-white hover:bg-gray-700" >
                <i class="fa-solid fa-plus"></i>
                Create Admin ville
            </a>
            <a class="flex items-center text-gray-100 opacity-75 hover:opacity-100 py-4 px-6 border-l-4 border-transparent hover:text-white hover:bg-gray-700" href="#">
                <i class="fas fa-sticky-note mr-3"></i>
                Show All Admin ville
            </a>
            <a class="flex items-center text-gray-100 opacity-75 hover:opacity-100 py-4 px-6 border-l-4 border-transparent hover:text-white hover:bg-gray-700" href="#">
                <i class="fas fa-sticky-note mr-3"></i>
                Get all Personne
            </a>
            <!-- logout -->
            <a class="flex items-center text-gray-100 opacity-75 hover:opacity-100 py-4 px-6 border-l-4 border-transparent hover:text-white hover:bg-gray-700" href="#">
                <i class="fas fa-sticky-note mr-3"></i>
                Logout
            </a>
        </nav>
    </div>
    <div class="w-full flex flex-col h-screen overflow-y-hidden">
        <!-- Desktop Header -->
        <header class="w-full items-center bg-white py-2 px-6 hidden md:flex">
            <div class="w-1/2"></div>
            <div class="relative w-1/2 flex justify-end">
                <div class="relative text-gray-600 focus-within:text-gray-400">
                    <span class="absolute inset-y-0 left-0 flex items-center pl-2">
                        <button type="submit" class="p-1 focus:outline-none focus:shadow-outline">
                            <svg class="h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M10 12a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 1a3 3 0 1 1 0-6 3 3 0 0 1 0 6zm5-3a5 5 0 1 1-10 0 5 5 0 0 1 10 0z"/>
                            </svg>
                        </button>
                    </span>
                    <input type="search" name="q" class="py-2 text-sm text-gray-900 rounded-md pl-10 focus:outline-none focus:bg-white focus:text-gray-900" placeholder="Search..." autocomplete="off">
                </div>
                <div class="ml-4 relative">
                    <button class="relative block h-8 w-8 rounded-full overflow-hidden shadow focus:outline-none">
                        <img class="h-full w-full object-cover" src="https://images.unsplash.com/photo-1516802273409-68526ee1bdd6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60" alt="Your avatar">
                    </button>
                </div>
            </div>
        </header>
        <div
                id="main"
                class="w-full overflow-x-hidden border-t flex flex-col">
            <main class="w-full flex-grow p-6">
                <h1 class="text-3xl text-black pb-6">Dashboard</h1>
                <div class="flex flex-wrap">

                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        <!--Metric Card-->
                        <div class="bg-white border rounded shadow p-2">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded p-5 bg-orange-600"><i class="fas fa-users fa-2x fa-fw fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h5 class="font-bold uppercase text-gray-500">Total Personne</h5>
                                    <h3 class="font-bold text-3xl">249</h3>
                                </div>
                            </div>
                        </div>
                        <!--/Metric Card-->
                    </div>
                </div>
            </main>
        </div>
        <!-- form create admin ville -->
        <div
                id="fomrCreateAdminVille"
                class="w-full overflow-x-hidden border-t flex flex-col ">
            <main class="w-full flex-grow p-6">
                <h1 class="text-3xl text-black pb-6">Create Admin ville</h1>
                <form action="dashboard?action=createAdminVille" method="post">
                    <div class="flex flex-wrap -mx-3 mb-6">
                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">
                                Full name
                            </label>
                            <input class="appearance none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-first-name" type="text" placeholder="Full name">
                            <p class="text-gray-600 text-xs italic">Make it as long and as crazy as you'd like</p>
                        </div>
                        <div class="w-full md:w-1/2 px-3">
                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">
                                Email
                            </label>
                            <input class="appearance none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-last-name" type="text" placeholder="Email">
                            <p class="text-gray-600 text-xs italic">Some tips - as long as needed</p>
                        </div>
                        <!-- password -->
                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">
                                Password
                            </label>
                            <input class="appearance none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-first-name" type="password" placeholder="Password">
                            <p class="text-gray-600 text-xs italic">Make it as long and as crazy as you'd like</p>
                        </div>
                        <!-- select ville -->
                        <% VilleController villeController = new VilleController();
                           List<Ville> villes = villeController.getAllVille();
                        %>
                        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">
                                Ville
                            </label>
                            <select class="appearance none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-first-name" type="text" placeholder="Full name">
                                <% for (Ville ville : villes) { %>
                                    <option value="<%= ville.getIdville() %>"><%= ville.getNomville() %></option>
                                <% } %>
                            </select>
                            <p class="text-gray-600 text-xs italic">Make sure it's valid</p>
                            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" type="submit">
                                Create
                            </button>
                    </div>

                </form>

            </main>
    </div>
    </div>
    </div>
<script >
     let main = document.getElementById('main');
     let formCreateAdminVille = document.getElementById('fomrCreateAdminVille');
     showFormCreateAdminVille = () => {
         main.classList.add('hidden');
         formCreateAdminVille.classList.remove('hidden');
     }



</script>


</body>
</html>
