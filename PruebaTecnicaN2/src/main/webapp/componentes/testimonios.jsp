<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Testimonials</title>
    <!-- Enlace al archivo CSS de Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <!-- Estilos personalizados -->
    <style>
        /* Define el color de fondo personalizado */
        .bg-custom-blue {
            background-color: #3fbac6;
        }
    </style>
</head>
<body>
    <div class="w-full py-12 bg-gray-100 md:py-24 lg:py-32 dark:bg-gray-800">
        <div class="container grid items-center gap-4 px-4 text-center md:px-6">
            <div class="space-y-3">
                <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">
                    Testimonials
                </h2>
                <p class="mx-auto max-w-2xl text-gray-500 md:text-xl/relaxed lg:text-base/relaxed xl:text-xl/relaxed dark:text-gray-400">
                    Our customers love the experience of using our administration app. Here's what they have to say.
                </p>
            </div>
            <div class="grid w-full grid-cols-1 gap-4 md:grid-cols-2 lg:gap-6 xl:gap-8">
                <div class="relative flex flex-col items-center justify-center p-4 space-y-2 border border-gray-200 rounded-xl border-gray-200 shadow-sm md:flex-row md:p-8 md:space-y-0 lg:grid lg:grid-cols-3 lg:items-center lg:gap-4 lg:p-10 bg-gray-50 dark:bg-gray-800">
                    <img src="/placeholder.svg" alt="User" width="80" height="80" class="rounded-full" style="aspect-ratio: 80 / 80; object-fit: cover;">
                    <div class="space-y-2 text-center md:col-span-2 md:text-left lg:text-center lg:space-y-4">
                        <div class="space-y-0.5">
                            <h3 class="text-lg font-bold">Alice Chang</h3>
                            <p class="text-sm text-gray-500 dark:text-gray-400">
                                Head of Operations
                            </p>
                        </div>
                        <p class="text-sm text-gray-500 dark:text-gray-400">
                            “The administration app has streamlined our processes and made our team more efficient. I highly recommend it to any organization looking to simplify their workflow.“
                        </p>
                    </div>
                    <button class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2 absolute top-4 right-4 md:static">
                        Read More
                    </button>
                </div>
                <!-- Aquí puedes agregar más bloques de testimonios -->
            </div>
        </div>
    </div>
</body>
</html>
