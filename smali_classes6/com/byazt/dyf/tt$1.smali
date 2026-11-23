.class public Lcom/byazt/dyf/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dyf/c;

.field public final synthetic tt:Lcom/byazt/dyf/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/dyf/tt;Lcom/byazt/dyf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dyf/tt$1;->tt:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dyf/tt$1;->c:Lcom/byazt/dyf/c;

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
    iget-object v0, p0, Lcom/byazt/dyf/tt$1;->tt:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/dyf/tt$1;->c:Lcom/byazt/dyf/c;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/dyf/tt;->c(Lcom/byazt/dyf/tt;Lcom/byazt/dyf/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
