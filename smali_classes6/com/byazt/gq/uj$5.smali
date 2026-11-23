.class public Lcom/byazt/gq/uj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x6b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/uj;->c(ILjava/lang/String;JLcom/byazt/dd/tt;JLcom/byazt/gq/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gq/n$c;

.field public final synthetic tt:Lcom/byazt/gq/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/uj;Lcom/byazt/gq/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/uj$5;->tt:Lcom/byazt/gq/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gq/uj$5;->c:Lcom/byazt/gq/n$c;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/uj$5;->c:Lcom/byazt/gq/n$c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/gq/n$c;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
