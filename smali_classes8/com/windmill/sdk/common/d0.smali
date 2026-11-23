.class public final synthetic Lcom/windmill/sdk/common/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# instance fields
.field public final synthetic a:Lcom/windmill/sdk/common/t$7;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/common/t$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/common/d0;->a:Lcom/windmill/sdk/common/t$7;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/d0;->a:Lcom/windmill/sdk/common/t$7;

    invoke-static {v0, p1}, Lcom/windmill/sdk/common/t$7;->a(Lcom/windmill/sdk/common/t$7;Ljava/lang/Object;)V

    return-void
.end method
