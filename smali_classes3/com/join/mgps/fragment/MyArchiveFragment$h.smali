.class Lcom/join/mgps/fragment/MyArchiveFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/a0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->w0(Lcom/join/mgps/dto/CloudListDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic b:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dialog/a0;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 12
    .line 13
    const-string v0, "\u63cf\u8ff0\u4fe1\u606f\u4e0d\u80fd\u4e3a\u7a7a"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 22
    .line 23
    const-string v1, "\u5b58\u6863\u5206\u4eab\u4e2d"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 31
    .line 32
    const-string v1, "\u53d6\u6d88\u5206\u4eab"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 38
    .line 39
    iget-boolean v1, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "\u5df2\u6709\u4e0a\u4f20\u8fdb\u884c\u4e2d"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dialog/a0;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->q0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$h;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 76
    .line 77
    iget-boolean v1, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->M:Z

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 93
    .line 94
    .line 95
    return-void
.end method
