.class public final synthetic Lcom/windmill/sdk/common/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/common/a$a;


# instance fields
.field public final synthetic a:Lcom/windmill/sdk/common/t$11$1;

.field public final synthetic b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field public final synthetic c:Lcom/windmill/sdk/strategy/a;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/common/t$11$1;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/common/a0;->a:Lcom/windmill/sdk/common/t$11$1;

    iput-object p2, p0, Lcom/windmill/sdk/common/a0;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    iput-object p3, p0, Lcom/windmill/sdk/common/a0;->c:Lcom/windmill/sdk/strategy/a;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/a0;->a:Lcom/windmill/sdk/common/t$11$1;

    iget-object v1, p0, Lcom/windmill/sdk/common/a0;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    iget-object v2, p0, Lcom/windmill/sdk/common/a0;->c:Lcom/windmill/sdk/strategy/a;

    invoke-static {v0, v1, v2}, Lcom/windmill/sdk/common/t$11$1;->a(Lcom/windmill/sdk/common/t$11$1;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method
