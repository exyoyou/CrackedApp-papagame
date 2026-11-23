.class public Lcom/byazt/wg/tt$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x42f,
        0x3c5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wg/tt$1;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wg/tt$1;


# direct methods
.method public constructor <init>(Lcom/byazt/wg/tt$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wg/tt$1$1;->c:Lcom/byazt/wg/tt$1;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wg/tt$1$1;->c:Lcom/byazt/wg/tt$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/wg/tt$1;->c:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/aas/pf;->ve(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
