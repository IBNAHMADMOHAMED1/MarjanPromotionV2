<div class="flex">
    <jsp:include page="./sidebar.jsp"></jsp:include>
    <section class="w-4/5 ml-auto h-screen bg-blue-200">
        <div class="w-full flex justify-center">
            <div class="w-full bg-white p-5 rounded-lg mt-8 mx-8">
                <h1 class="text-center pb-2 pt-1 text-xl font-medium">
                    <script>
                        const time = new Date();
                        const hour = time.getHours();
                        if(hour < 12){
                            document.write("Good Morning");
                        }else if(hour < 18){
                            document.write("Good Afternoon");
                        }else{
                            document.write("Good Evening");
                        }
                    </script>
                </h1>
            </div>
        </div>
    </section>

</div>