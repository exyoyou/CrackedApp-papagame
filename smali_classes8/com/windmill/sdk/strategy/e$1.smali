.class Lcom/windmill/sdk/strategy/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/e;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/windmill/sdk/strategy/e;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/e;Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$request",
            "val$slotCustomGroup"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/e$1;->c:Lcom/windmill/sdk/strategy/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/strategy/e$1;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/strategy/e$1;->b:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error_code",
            "error_msg"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/windmill/sdk/strategy/e$1;->a:Lcom/windmill/sdk/WindMillAdRequest;

    new-instance p2, Lcom/windmill/sdk/strategy/e$1$2;

    invoke-direct {p2, p0}, Lcom/windmill/sdk/strategy/e$1$2;-><init>(Lcom/windmill/sdk/strategy/e$1;)V

    const-string v0, "pull_respond"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, p2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/models/Waterfall;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waterfall"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/strategy/e$1;->a:Lcom/windmill/sdk/WindMillAdRequest;

    new-instance v0, Lcom/windmill/sdk/strategy/e$1$1;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/strategy/e$1$1;-><init>(Lcom/windmill/sdk/strategy/e$1;)V

    const-string v1, "pull_respond"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v2, v0}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method
