<%@ page import="Entity.Centre" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<div class="flex">
    <jsp:include page="../Global/Sidebar.jsp" />
    <section class="w-4/5 ml-auto bg-gray-200">
        <div class="w-full flex justify-center">
            <div class="w-full bg-white p-5 rounded-lg mt-8 mx-8">
                <div class="flex justify-between">
                    <h1 class="text-2xl font-bold">Liste des centres</h1>
                    <button  onclick="openPopup()"
                            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Ajouter un centre</button>
                </div>
                <!-- modal -->
                <div id="popup"
                     style="top: 15%;
                        transition: all 0.5s;
                     "
                     class="hidden hidden overflow-y-auto overflow-x-hidden fixed top-5 right-10 left-10 z-50 md:inset-0 h-modal md:h-full">
                    <div class="relative w-1/2 h-1/2 bg-white rounded-lg shadow-lg mx-auto my-auto p-5">
                        <div class="flex justify-between items-center m-2">
                            <h1 class="text-2xl font-bold">Ajouter un centre</h1>
                            <button onclick="closePopup()" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">X</button>
                        </div>
                        <form  method="post">
                            <!-- tow input  and one button -->
                            <div class="flex justify-between mt-5 gap-5">
                                <div class="w-1/2">
                                    <label for="nom">Nom</label>
                                    <input type="text" name="nom" id="nom"
                                           class="block w-full px-4 py-2 mt-2 bg-white border rounded-md focus:border-blue-400 focus:ring-blue-300 focus:outline-none focus:ring focus:ring-opacity-40"
                                           placeholder="Nom">
                                </div>
                                <div class="w-1/2">
                                    <label for="ville">Ville</label>
                                    <input type="text" name="ville" id="ville"
                                           class="block w-full px-4 py-2 mt-2 bg-white border rounded-md focus:border-blue-400 focus:ring-blue-300 focus:outline-none focus:ring focus:ring-opacity-40"
                                           placeholder="ville">
                                </div>
                            </div>
                            <!-- button -->
                            <div class="flex justify-end mt-5">
                                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Ajouter</button>
                            </div>

                        </form>
                    </div>
                </div>


                <div class="flex flex-col">
                    <!-- pop up  from here  with java script logic -->

                    <!-- script for pop up -->
                    <script>
                        const openPopup = () => {
                            console.log("open");
                            document.getElementById("popup").classList.remove("hidden");
                        }
                        const closePopup = () => {
                            console.log("close");
                            document.getElementById("popup").classList.add("hidden");
                        }
                    </script>


                    <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                        <div class="py-4 inline-block min-w-full sm:px-6 lg:px-8">
                            <div class="overflow-hidden">
                                <table class="min-w-full text-center">
                                    <thead class="border-b bg-blue-100">
                                    <tr>
                                        <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                                            Id
                                        </th>
                                        <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                                            Nom
                                        </th>
                                        <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                                            Ville
                                        </th>
                                        <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                                            Created at
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <%
                                        List<Centre> centres = (List<Centre>) request.getAttribute("centres");
                                        for (Centre centre : centres) {
                                    %>
                                    <tr class="bg-blue-50 border-b">
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%= centre.getIdCentre() %></div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%= centre.getNomCentre() %></div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%= centre.getVilleCentre() %></div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm text-gray-900"><%
                                                // Convert date to string
                                                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                                                String strDate = formatter.format(centre.getCreatedAt());
                                                %>
                                                <%= strDate %>

                                            </div>
                                        </td>
                                    </tr>
                                    <% } %>



                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-full flex justify-center my-8 bg-gray-200">
            <a href="#
" class="flex items-center px-4 py-2 mx-1 text-gray-500 bg-white rounded-md cursor-not-allowed dark:bg-gray-800 dark:text-gray-600">
                previous
            </a>

            <a href="#" class="items-center hidden px-4 py-2 mx-1 text-gray-700 transition-colors duration-300 transform bg-white rounded-md sm:flex dark:bg-gray-800 dark:text-gray-200 hover:bg-blue-600 dark:hover:bg-blue-500 hover:text-white dark:hover:text-gray-200">
                1
            </a>

            <a href="#" class="items-center hidden px-4 py-2 mx-1 text-gray-700 transition-colors duration-300 transform bg-white rounded-md sm:flex dark:bg-gray-800 dark:text-gray-200 hover:bg-blue-600 dark:hover:bg-blue-500 hover:text-white dark:hover:text-gray-200">
                2
            </a>

            <a href="#" class="items-center hidden px-4 py-2 mx-1 text-gray-700 transition-colors duration-300 transform bg-white rounded-md sm:flex dark:bg-gray-800 dark:text-gray-200 hover:bg-blue-600 dark:hover:bg-blue-500 hover:text-white dark:hover:text-gray-200">
                3
            </a>

            <a href="#" class="flex items-center px-4 py-2 mx-1 text-gray-700 transition-colors duration-300 transform bg-white rounded-md dark:bg-gray-800 dark:text-gray-200 hover:bg-blue-600 dark:hover:bg-blue-500 hover:text-white dark:hover:text-gray-200">
                Next
            </a>
        </div>
    </section>
</div>
