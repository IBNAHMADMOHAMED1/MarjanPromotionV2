
<%@ page import="Entity.Categorie" %>
<%@ page import="java.util.List" %>
<section class="w-4/5 ml-auto h-screen bg-gray-200">
  <div class="w-full flex justify-center">
    <div class="w-full bg-white p-5 rounded-lg mt-8 mx-8">
      <div class="flex justify-between">
        <h1 class="text-2xl font-bold">Liste des catégories</h1>
        <button  onclick="openPopup()"
                 class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Ajouter</button>
      </div>

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
            </div>
            <!-- button -->
            <div class="flex justify-end mt-5">
              <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Ajouter</button>
            </div>

          </form>
        </div>
      </div>
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

      <div class="flex flex-col">
        <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
          <div class="py-4 inline-block min-w-full sm:px-6 lg:px-8">
            <div class="overflow-hidden">
              <table class="min-w-full text-center">
                <thead class="border-b bg-blue-150">
                <tr>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Id
                  </th>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Nom
                  </th>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Created at
                  </th>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Updated at
                  </th>
                </tr>
                </thead>
                  <tbody>
                  <%
                    List<Categorie> categories = (List<Categorie>) request.getAttribute("categories");
                    for (Categorie categorie : categories) {
                    %>
                    <tr class="bg-blue-50 border-b">
                      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                        <%= categorie.getIdCategorie() %>
                      </td>
                      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                        <%= categorie.getNomCategorie() %>
                      </td>
                      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                        <%= categorie.getCreatedAt() %>
                      </td>
                      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                        <%= categorie.getUpdatedAt() %>
                      </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="w-full flex justify-center my-8">
    <a href="#" class="flex items-center px-4 py-2 mx-1 text-gray-500 bg-white rounded-md cursor-not-allowed dark:bg-gray-800 dark:text-gray-600">
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