<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class Contact extends Mailable
{
    use Queueable, SerializesModels;


    public $mailData;
    public function __construct($mailData)
    {
       $this->mailData = $mailData;
    }


    public function envelope()
    {
        return new Envelope(
            subject: $this->mailData['mail_subject'],
        );
    }

    public function content()
    {
        return new Content(
            view: 'email.contact',
        );
    }

    public function attachments()
    {
        return [];
    }
}
