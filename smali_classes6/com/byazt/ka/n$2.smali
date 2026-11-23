.class public Lcom/byazt/ka/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x36a,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ka/n;->c(Ljava/lang/String;Lcom/byazt/ka/ve;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/ka/n;


# direct methods
.method public constructor <init>(Lcom/byazt/ka/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ka/n$2;->tt:Lcom/byazt/ka/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ka/n$2;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/ka/n$2;->tt:Lcom/byazt/ka/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ka/n$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/ka/n;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
