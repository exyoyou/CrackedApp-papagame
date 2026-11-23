.class public Lcom/byazt/oq/DynamicUnlockView$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x5db
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/DynamicUnlockView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/DynamicUnlockView$1;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/DynamicUnlockView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/DynamicUnlockView$1$2;->c:Lcom/byazt/oq/DynamicUnlockView$1;

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
    iget-object v0, p0, Lcom/byazt/oq/DynamicUnlockView$1$2;->c:Lcom/byazt/oq/DynamicUnlockView$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/oq/DynamicUnlockView$1;->c:Lcom/byazt/oq/DynamicUnlockView;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/oq/DynamicUnlockView;->ve(Lcom/byazt/oq/DynamicUnlockView;)Lcom/byazt/oq/FlowLightView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/oq/FlowLightView;->c(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
