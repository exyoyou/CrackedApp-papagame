.class public Lcom/byazt/b/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/c;->ve(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/b/c;


# direct methods
.method public constructor <init>(Lcom/byazt/b/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/c$4;->tt:Lcom/byazt/b/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/b/c$4;->c:I

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
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/b/c$4;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/n/tt;->a(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
