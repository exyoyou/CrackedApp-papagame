.class Lcom/join/mgps/fragment/MyArchiveFragment$n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment$n;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/fragment/MyArchiveFragment$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment$n;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$listDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/MyArchiveFragment;->O(Lcom/join/mgps/fragment/MyArchiveFragment;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->P(Lcom/join/mgps/fragment/MyArchiveFragment;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
