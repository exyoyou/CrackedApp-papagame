.class public Lcom/byazt/jn/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sa/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3ac,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jn/c;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jn/c;


# direct methods
.method public constructor <init>(Lcom/byazt/jn/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jn/c$1;->c:Lcom/byazt/jn/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/jn/c$1$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/byazt/jn/c$1$1;-><init>(Lcom/byazt/jn/c$1;Landroid/graphics/Bitmap;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/cd/x;->c(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
