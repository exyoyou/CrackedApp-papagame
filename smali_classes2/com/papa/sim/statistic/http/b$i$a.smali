.class Lcom/papa/sim/statistic/http/b$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b$i;->c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/papa/sim/statistic/http/b$i;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b$i;Landroid/widget/ImageView;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa/sim/statistic/http/b$i$a;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/sim/statistic/http/b$i$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa/sim/statistic/http/b$i$a;->d:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget v0, p0, Lcom/papa/sim/statistic/http/b$i$a;->b:I

    .line 6
    .line 7
    invoke-static {p1, p2, v0}, Lcom/papa/sim/statistic/http/b$i;->a(Lcom/papa/sim/statistic/http/b$i;Landroid/widget/ImageView;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Lokhttp3/Response;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-static {p1}, Lcom/papa/sim/statistic/http/b$m;->d(Ljava/io/InputStream;)Lcom/papa/sim/statistic/http/b$m$a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/papa/sim/statistic/http/b$m;->f(Landroid/view/View;)Lcom/papa/sim/statistic/http/b$m$a;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/papa/sim/statistic/http/b$m;->a(Lcom/papa/sim/statistic/http/b$m$a;Lcom/papa/sim/statistic/http/b$m$a;)I

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    :try_start_3
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/papa/sim/statistic/http/b$i;->a:Lcom/papa/sim/statistic/http/b;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/papa/sim/statistic/http/b;->h(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/http/b$k;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/papa/sim/statistic/http/b$i$a;->c:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$i$a;->d:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/http/b$k;->c(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    .line 60
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    .line 62
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/papa/sim/statistic/http/b$i;->a:Lcom/papa/sim/statistic/http/b;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/papa/sim/statistic/http/b;->i(Lcom/papa/sim/statistic/http/b;)Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lcom/papa/sim/statistic/http/b$i$a$a;

    .line 75
    .line 76
    invoke-direct {v2, p0, v0}, Lcom/papa/sim/statistic/http/b$i$a$a;-><init>(Lcom/papa/sim/statistic/http/b$i$a;Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_3

    .line 90
    :catch_1
    move-object v0, p1

    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    move-object v5, v0

    .line 94
    move-object v0, p1

    .line 95
    move-object p1, v5

    .line 96
    goto :goto_3

    .line 97
    :catch_2
    :goto_1
    :try_start_5
    iget-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    .line 100
    .line 101
    iget v2, p0, Lcom/papa/sim/statistic/http/b$i$a;->b:I

    .line 102
    .line 103
    invoke-static {p1, v1, v2}, Lcom/papa/sim/statistic/http/b$i;->a(Lcom/papa/sim/statistic/http/b$i;Landroid/widget/ImageView;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    .line 105
    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catch_3
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_0
    :goto_2
    return-void

    .line 117
    :goto_3
    if-eqz p1, :cond_1

    .line 118
    .line 119
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catch_4
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_1
    :goto_4
    throw v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$i$a;->a(Lokhttp3/Request;Ljava/io/IOException;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/papa/sim/statistic/http/b$i$a;->b(Lokhttp3/Response;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
