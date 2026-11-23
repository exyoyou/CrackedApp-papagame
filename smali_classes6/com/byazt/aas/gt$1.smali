.class public final Lcom/byazt/aas/gt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x4df
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/gt;->c(Landroid/net/Uri;Lcom/byazt/omf/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/d;

.field public final synthetic tt:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/gt$1;->c:Lcom/byazt/omf/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/aas/gt$1;->tt:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/aas/gt$1;->c:Lcom/byazt/omf/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/aas/gt$1;->tt:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
