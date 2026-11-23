.class Lcom/join/mgps/service/CommonService$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "s"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/service/CommonService;


# direct methods
.method private constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$s;->b:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/service/CommonService$j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/service/CommonService$s;-><init>(Lcom/join/mgps/service/CommonService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$s;->b:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->o(Lcom/join/mgps/service/CommonService;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
