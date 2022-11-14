<jsp:include page="Global/Header.jsp"></jsp:include>
<!-- page for checking the type of user and redirecting to the appropriate page -->
<!-- using tailwind css and blue  -->
<section
    class="text-gray-600 body-font bg-blue-150 h-screen"
    >
    <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-wrap w-full mb-20 flex-col items-center text-center">
            <h1 class="sm:text-3xl text-2xl font-medium title-font mb-2 text-gray-900">
                Marjan Check In
            </h1>
            <p class="lg:w-1/2 w-full leading-relaxed text-gray-500">
                Please Select Your User Type
            </p>
        </div>
        <div class="flex flex-wrap -m-4">
            <div class="p-4 lg:w-1/3">
                <div class="h-full bg-blue-100 bg-opacity-75 px-8 pt-16 pb-24 rounded-lg overflow-hidden text-center relative">
                    <h2 class="tracking-widest text-xs title-font font-medium text-gray-400 mb-1">
                        Marjan
                    </h2>
                    <h1 class="title-font
                        sm:text-2xl text-xl font-medium text-gray-900 mb-3">
                        Admin General
                    </h1>
                    <p class="leading-relaxed mb-3">
                        If you are a Marjan Admin General, please click the button below to check in.
                    </p>
                    <a
                        href="auth-admin-general"
                        class="text-indigo-500 inline-flex items-center"
                        >
                        Check In
                        <svg
                            fill="none"
                            stroke="currentColor"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            class="w-4 h-4 ml-2"
                            viewBox="0 0 24 24"
                            >
                            <path d="M5 12h14M12 5l7 7-7 7"></path>
                        </svg>
                    </a>
                    </div>
                </div>
                <!-- admin -->
                <div class="p-4 lg:w-1/3">
                    <div class="h-full bg-blue-100 bg-opacity-75 px-8 pt-16 pb-24 rounded-lg overflow-hidden text-center relative">
                        <h2 class="tracking-widest text-xs title-font font-medium text-gray-400 mb-1">
                            Marjan
                        </h2>
                        <h1 class="title-font sm:text-2xl text-xl font-medium text-gray-900 mb-3">
                            Admin
                        </h1>
                        <p class="leading-relaxed mb-3">
                            If you are a Marjan Admin, please click the button below to check in.
                        </p>
                        <a
                            href="auth-admin"
                            class="text-indigo-500 inline-flex items-center"
                            >
                            Check In
                            <svg
                                fill="none"
                                stroke="currentColor"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                class="w-4 h-4 ml-2"
                                viewBox="0 0 24 24"
                                >
                                <path d="M5 12h14M12 5l7 7-7 7"></path>
                            </svg>
                        </a>
                    </div>
                </div>
                <!-- responsable de rayon -->
                <div class="p-4 lg:w-1/3">
                    <div class="h-full bg-blue-100 bg-opacity-75 px-8 pt-16 pb-24 rounded-lg overflow-hidden text-center relative">
                        <h2 class="tracking-widest text-xs title-font font-medium text-gray-400 mb-1">
                            Marjan
                        </h2>
                        <h1 class="title-font sm:text-2xl text-xl font-medium text-gray-900 mb-3">
                            Responsable de Rayon
                        </h1>
                        <p class="leading-relaxed mb-3">
                            If you are a Marjan Responsable de Rayon, please click the button below to check in.
                        </p>
                        <a
                            href="auth-responsable-rayon"
                            class="text-indigo-500 inline-flex items-center"
                            >
                            Check In
                            <svg
                                fill="none"
                                stroke="currentColor"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                class="w-4 h-4 ml-2"
                                viewBox="0 0 24 24"
                                >
                                <path d="M5 12h14M12 5l7 7-7 7"></path>
                            </svg>
                        </a>
                    </div>
                </div>


            </div>
        </div>
    </div>
</section>
