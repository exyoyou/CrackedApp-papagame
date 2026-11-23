.class public final synthetic Lcom/windmill/sdk/common/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/windmill/sdk/common/s;

.field public final synthetic c:Lcom/windmill/sdk/WindMillError;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/common/x;->b:Lcom/windmill/sdk/common/s;

    iput-object p2, p0, Lcom/windmill/sdk/common/x;->c:Lcom/windmill/sdk/WindMillError;

    iput-object p3, p0, Lcom/windmill/sdk/common/x;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/x;->b:Lcom/windmill/sdk/common/s;

    iget-object v1, p0, Lcom/windmill/sdk/common/x;->c:Lcom/windmill/sdk/WindMillError;

    iget-object v2, p0, Lcom/windmill/sdk/common/x;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/windmill/sdk/common/s;->p(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    return-void
.end method
