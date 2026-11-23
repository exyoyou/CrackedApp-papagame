.class Lcom/join/mgps/fragment/MyArchiveFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->B(Lcom/join/mgps/dto/CloudListDataBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataBean",
            "val$isMarcket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/w;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->b:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->S(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->P(Lcom/join/mgps/fragment/MyArchiveFragment;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$a;->c:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
