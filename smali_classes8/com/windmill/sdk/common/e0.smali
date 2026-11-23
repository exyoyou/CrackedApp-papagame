.class public final synthetic Lcom/windmill/sdk/common/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# instance fields
.field public final synthetic a:Lcom/windmill/sdk/common/t$7;

.field public final synthetic b:Lcom/czhj/volley/VolleyError;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/common/t$7;Lcom/czhj/volley/VolleyError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/common/e0;->a:Lcom/windmill/sdk/common/t$7;

    iput-object p2, p0, Lcom/windmill/sdk/common/e0;->b:Lcom/czhj/volley/VolleyError;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/e0;->a:Lcom/windmill/sdk/common/t$7;

    iget-object v1, p0, Lcom/windmill/sdk/common/e0;->b:Lcom/czhj/volley/VolleyError;

    invoke-static {v0, v1, p1}, Lcom/windmill/sdk/common/t$7;->b(Lcom/windmill/sdk/common/t$7;Lcom/czhj/volley/VolleyError;Ljava/lang/Object;)V

    return-void
.end method
