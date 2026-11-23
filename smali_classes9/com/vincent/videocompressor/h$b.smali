.class Lcom/vincent/videocompressor/h$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vincent/videocompressor/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/vincent/videocompressor/h$a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/vincent/videocompressor/h$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "quality"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vincent/videocompressor/h$b;->a:Lcom/vincent/videocompressor/h$a;

    .line 5
    .line 6
    iput p2, p0, Lcom/vincent/videocompressor/h$b;->b:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/vincent/videocompressor/h$b;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vincent/videocompressor/VideoController;->d()Lcom/vincent/videocompressor/VideoController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v1, p1, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget-object p1, p1, v2

    .line 10
    .line 11
    iget v2, p0, Lcom/vincent/videocompressor/h$b;->b:I

    .line 12
    .line 13
    new-instance v3, Lcom/vincent/videocompressor/h$b$a;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/vincent/videocompressor/h$b$a;-><init>(Lcom/vincent/videocompressor/h$b;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/vincent/videocompressor/VideoController;->a(Ljava/lang/String;Ljava/lang/String;ILcom/vincent/videocompressor/VideoController$b;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method protected c(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/vincent/videocompressor/h$b;->a:Lcom/vincent/videocompressor/h$a;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/vincent/videocompressor/h$b;->a:Lcom/vincent/videocompressor/h$a;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/vincent/videocompressor/h$a;->onSuccess()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/vincent/videocompressor/h$b;->a:Lcom/vincent/videocompressor/h$a;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/vincent/videocompressor/h$a;->onFail()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method protected varargs d([Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/vincent/videocompressor/h$b;->a:Lcom/vincent/videocompressor/h$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object p1, p1, v1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-interface {v0, p1}, Lcom/vincent/videocompressor/h$a;->onProgress(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "paths"
        }
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/vincent/videocompressor/h$b;->b([Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/vincent/videocompressor/h$b;->c(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/vincent/videocompressor/h$b;->a:Lcom/vincent/videocompressor/h$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/vincent/videocompressor/h$a;->onStart()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/vincent/videocompressor/h$b;->d([Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
