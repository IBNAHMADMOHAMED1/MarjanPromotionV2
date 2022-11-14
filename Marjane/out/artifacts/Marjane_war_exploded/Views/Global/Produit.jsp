<%@ page import="java.util.List" %>
<%@ page import="Entity.Produit" %>
<section class="w-4/5 ml-auto h-screen bg-blue-50">
  <div class="w-full flex justify-center">
    <div class="w-full bg-white p-5 rounded-lg mt-8 mx-8">
      <h1 class="text-center pb-2 pt-1 text-xl font-medium">Les produits disponible</h1>
      <div class="flex flex-col">
        <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
          <div class="py-4 inline-block min-w-full sm:px-6 lg:px-8">
            <div class="overflow-hidden">
              <table class="min-w-full text-center">
                <thead class="border-b bg-bule-200">
                <tr>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Id
                  </th>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Nom
                  </th>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Quantite
                  </th>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Prix
                  </th>
                  <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                    Nom de Catetorie
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
                  List<Produit> produits = (List<Produit>) request.getAttribute("produits");
                    for (Produit produit : produits) {
                %>
                <tr class="border-b bg-blue-50">
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowra">
                        <%= produit.getIdProduit() %>
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowra">
                        <%= produit.getNomProduit() %>
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowra">
                        <%= produit.getQuantite() %>
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowra">
                        <%= produit.getPrix() %>
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowra">
                        <%= produit.getCategorieId() %>
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowra">
                        <%= produit.getCreatedAt() %>
                    </td>
                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowra">
                        <%= produit.getUpdatedAt() %>
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