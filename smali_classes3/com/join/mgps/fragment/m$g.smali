.class Lcom/join/mgps/fragment/m$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/m;->B(Lcom/join/mgps/dto/CloudListDataBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic b:Lcom/join/mgps/fragment/m;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/m;Lcom/join/mgps/dto/CloudListDataBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/m$g;->b:Lcom/join/mgps/fragment/m;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/m$g;->a:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/m$g;->b:Lcom/join/mgps/fragment/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/m$g;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/m;->b0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/m$g;->b:Lcom/join/mgps/fragment/m;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/fragment/m;->Q(Lcom/join/mgps/fragment/m;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/m$g;->b:Lcom/join/mgps/fragment/m;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/fragment/m;->n:Lcom/join/mgps/pref/PrefDef_;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNoticeMarcket()Lorg/androidannotations/api/sharedpreferences/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
