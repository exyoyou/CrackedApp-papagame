.class Lcom/join/mgps/fragment/MyArchiveFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->x0(Lcom/join/mgps/dto/CloudListDataBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$e;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$e;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$e;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$e;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/MyArchiveFragment;->T(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$e;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->M:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
