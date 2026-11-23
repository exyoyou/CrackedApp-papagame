.class public Lcom/join/mgps/service/CommonService$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/service/CommonService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/CommonService;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$t;->b:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$t;->b:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$t;->b:Lcom/join/mgps/service/CommonService;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/service/CommonService;->g0()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$t;->b:Lcom/join/mgps/service/CommonService;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/service/CommonService;->h0()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$t;->b:Lcom/join/mgps/service/CommonService;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/service/CommonService;->i0(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
