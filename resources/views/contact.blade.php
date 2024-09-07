@extends('layouts.frontend')

@section('content')
    <!--==================== HOME ====================-->
    <section>
        <div class="swiper-container gallery-top">
            <div class="swiper-wrapper">
                <!--========== ISLANDS 1 ==========-->
                @if (session()->has('message'))
                    <div id="alert" class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session()->get('message') }}
                        <i class='bx bx-x alert-close' id="close" style="cursor: pointer;"></i>
                    </div>
                @endif

                <section class="islands swiper-slide">
                    <img src="{{ asset('frontend/assets/img/contact-hero.jpg') }}" alt="" class="islands__bg" />
                    <div class="bg__overlay">
                        <div class="islands__container container">
                            <div class="islands__data">
                                <h2 class="islands__subtitle">Need Travel</h2>
                                <h1 class="islands__title">Contact Us</h1>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
    <!--==================== CONTACT-By SoicalMedia ====================-->
    <section class="contact section" id="contact">
        <div class="contact__container container grid">
            <div class="contact__images">
                <div class="contact__orbe"></div>

                <div class="contact__img">
                    <img src="{{ asset('frontend/assets/img/backg/Globalization-bro (1).svg') }}" alt="" />
                </div>
            </div>

            <div class="contact__content">
                <div class="contact__data">
                    <span class="section__subtitle">Need Help</span>
                    <h2 class="section__title">Don't hesitate to contact us</h2>
                    <p class="contact__description">
                        Is there a problem finding places for yout next trip? Need a
                        guide in first trip or need a consultation about traveling? just
                        contact us.
                    </p>
                </div>

                <div class="contact__card">
                    <div class="contact__card-box">
                        <div class="contact__card-info">
                            <i class="bx bxs-phone-call"></i>
                            <div>
                                <h3 class="contact__card-title">Call</h3>
                                <p class="contact__card-description">777777777</p>
                            </div>
                        </div>

                        <button class="button contact__card-button">Call Now</button>
                    </div>
                    <div class="contact__card-box">
                        <div class="contact__card-info">
                            <i class="bx bxs-message-rounded-dots"></i>
                            <div>
                                <h3 class="contact__card-title">Whatsapp</h3>
                                <p class="contact__card-description">777777777</p>
                            </div>
                        </div>

                        <button class="button contact__card-button">Chat Now</button>
                    </div>
                    <div class="contact__card-box">
                        <div class="contact__card-info">
                            <i class="bx bxs-video"></i>
                            <div>
                                <h3 class="contact__card-title">Video Call</h3>
                                <p class="contact__card-description">777777777</p>
                            </div>
                        </div>

                        <button class="button contact__card-button">
                            Video Call Now
                        </button>
                    </div>
                    <div class="contact__card-box">
                        <div class="contact__card-info">
                            <i class="bx bxs-phone-call"></i>
                            <div>
                                <h3 class="contact__card-title">Message</h3>
                                <p class="contact__card-description">777777777</p>
                            </div>
                        </div>

                        <button class="button contact__card-button">Message Now</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--==================== CONTACT-By Email ====================-->
    <section class="contact section" id="contact">
        <div class="contact__container container grid">
            <div class="contact__content">
                <div class="contact__data">
                    <span class="section__subtitle">By Email</span>
                    <h2 class="section__title">Help us improve this service by writing your comments.</h2>
                    <p class="contact__description">
                        If you have any quisteion ask me? Need a
                        guide in first trip or need a consultation about traveling? just
                        contact us.
                    </p>
                </div>
            </div>

            <form action="{{ route('contact.sendEmail') }}" method="POST" class="p-4 border rounded">
                @csrf
                <div class="mb-3">
                    <label for="name" class="form-label">Name:</label>
                    <input type="text" name="name" class="form-control" required placeholder="Enter your name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" name="email" class="form-control" required placeholder="Enter your email">
                </div>
                <div class="mb-3">
                    <label for="subject" class="form-label">Subject:</label>
                    <textarea name="subject" class="form-control" rows="2" required placeholder="Type your Title"></textarea>
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Message:</label>
                    <textarea name="message" class="form-control" rows="4" required placeholder="Type your message"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send</button>
            </form>


        </div>
    </section>
@endsection


@push('style-alt')
    <style>
        .alert {
            position: absolute;
            top: 120px;
            left: 0;
            right: 0;
            background-color: var(--second-color);
            color: white;
            padding: 1rem;
            width: 70%;
            z-index: 99;
            margin: auto;
            border-radius: .25rem;
            text-align: center;
        }

        .alert-close {
            font-size: 1.5rem;
            color: #090909;
            position: absolute;
            top: .25rem;
            right: .5rem;
            cursor: pointer;
        }

        blockquote {
            border-left: 8px solid #b4b4b4;
            padding-left: 1rem;
        }

        .blog__detail ul li {
            list-style: initial;
        }
    </style>
@endpush
{{--
@push('script-alt')
    <script>
        let galleryThumbs = new Swiper('.gallery-thumbs', {
            spaceBetween: 0,
            slidesPerView: 0,
        });

        let galleryTop = new Swiper('.gallery-top', {
            effect: 'fade',
            loop: true,

            thumbs: {
                swiper: galleryThumbs,
            },
        });

        const close = document.getElementById('close');
        const alert = document.getElementById('alert');

        // Manually close the alert when clicking the close button
        if (close) {
            close.addEventListener('click', function() {
                alert.style.display = 'none';
            });
        }

        // Automatically hide the alert after 5 seconds
        if (alert) {
            setTimeout(function() {
                alert.style.display = 'none';
            }, 5000); // 5000 milliseconds = 5 seconds
        }
    </script>
@endpush --}}

@push('script-alt')
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const close = document.getElementById('close');
        const alert = document.getElementById('alert');

        if (alert) {
            // Automatically hide the alert after 5 seconds
            setTimeout(function() {
                alert.style.display = 'none'; // Hide the alert
            }, 8000); // 5000 milliseconds = 5 seconds
        }

        if (close) {
            // Manually close the alert when clicking the close button
            close.addEventListener('click', function() {
                alert.style.display = 'none'; // Hide the alert
            });
        }
    });
</script>
@endpush
