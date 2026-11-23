.class public Lcom/join/android/app/common/http/d$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/d;


# direct methods
.method public constructor <init>(Lcom/join/android/app/common/http/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$i;->a:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/http/d$i;->e(Landroid/widget/ImageView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Landroid/widget/ImageView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "errorResId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$i;->a:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/http/d;->i(Lcom/join/android/app/common/http/d;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/android/app/common/http/d$i$b;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/join/android/app/common/http/d$i$b;-><init>(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public b(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/join/android/app/common/http/d$i;->c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "url",
            "errorResId",
            "tag"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/android/app/common/http/d$i;->a:Lcom/join/android/app/common/http/d;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v7, Lcom/join/android/app/common/http/d$i$a;

    .line 25
    .line 26
    move-object v1, v7

    .line 27
    move-object v2, p0

    .line 28
    move-object v3, p1

    .line 29
    move v4, p3

    .line 30
    move-object v5, p2

    .line 31
    move-object v6, p4

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/join/android/app/common/http/d$i$a;-><init>(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;ILjava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public d(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "view",
            "url",
            "tag"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/join/android/app/common/http/d$i;->c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
