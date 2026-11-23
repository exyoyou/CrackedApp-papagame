.class Lcom/join/mgps/dialog/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/e;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/e$d;->b:Lcom/join/mgps/dialog/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/e$d;->b:Lcom/join/mgps/dialog/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/e$d;->b:Lcom/join/mgps/dialog/e;

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/join/mgps/dialog/e;->l:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/dialog/e$d;->b:Lcom/join/mgps/dialog/e;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/VersionDto;->getFilepath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/dialog/e$d;->b:Lcom/join/mgps/dialog/e;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lcom/join/mgps/dialog/e;->b(Lcom/join/mgps/dialog/e;Ljava/io/File;Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/service/UpdateService_;->p(Landroid/content/Context;)Lcom/join/mgps/service/UpdateService_$a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d;->b:Lcom/join/mgps/dialog/e;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/VersionDto;->getAndroidUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "url"

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/mgps/service/UpdateService_$a;

    .line 54
    .line 55
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
