.class public final synthetic Lcom/windmill/sdk/common/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# instance fields
.field public final synthetic a:Lcom/windmill/sdk/common/t;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/common/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/common/y;->a:Lcom/windmill/sdk/common/t;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/y;->a:Lcom/windmill/sdk/common/t;

    invoke-static {v0, p1}, Lcom/windmill/sdk/common/t;->q(Lcom/windmill/sdk/common/t;Ljava/lang/Object;)V

    return-void
.end method
