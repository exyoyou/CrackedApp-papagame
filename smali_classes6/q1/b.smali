.class public final synthetic Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/byazt/qe/ve;


# direct methods
.method public synthetic constructor <init>(Lcom/byazt/qe/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/b;->b:Lcom/byazt/qe/ve;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/b;->b:Lcom/byazt/qe/ve;

    invoke-static {v0}, Lcom/byazt/qe/ve;->b(Lcom/byazt/qe/ve;)V

    return-void
.end method
