.class Lcom/join/mgps/dialog/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/e;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/join/mgps/dialog/e;->l:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/VersionDto;->getFilepath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lcom/join/mgps/dialog/e;->b(Lcom/join/mgps/dialog/e;Ljava/io/File;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/service/UpdateService_;->p(Landroid/content/Context;)Lcom/join/mgps/service/UpdateService_$a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/dialog/e;->e:Lcom/join/mgps/dto/VersionDto;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/VersionDto;->getAndroidUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "url"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/join/mgps/service/UpdateService_$a;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

    .line 54
    .line 55
    iget-boolean v0, p1, Lcom/join/mgps/dialog/e;->k:Z

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/dialog/e$a;->b:Lcom/join/mgps/dialog/e;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/dialog/e;->b:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "\u66f4\u65b0\u5305\u5f00\u59cb\u4e0b\u8f7d"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string p1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u91cd\u8bd5"

    .line 89
    .line 90
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method
