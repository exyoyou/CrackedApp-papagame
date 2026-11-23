.class Lcom/join/mgps/activity/SplashActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->Y(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ShowViewDataBean;

.field final synthetic c:Lcom/join/mgps/dto/SplashIntentBean;

.field final synthetic d:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$showViewDataBean",
            "val$appBeanMain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$p;->d:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SplashActivity$p;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/SplashActivity$p;->c:Lcom/join/mgps/dto/SplashIntentBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$p;->d:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$p;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$p;->c:Lcom/join/mgps/dto/SplashIntentBean;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->o(Lcom/join/mgps/activity/SplashActivity;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    const-string v2, "0"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "1"

    .line 18
    .line 19
    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/join/mgps/activity/SplashActivity;->n(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
