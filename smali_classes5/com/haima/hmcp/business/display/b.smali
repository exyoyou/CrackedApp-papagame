.class public final synthetic Lcom/haima/hmcp/business/display/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/business/display/DataProcessor;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/business/display/DataProcessor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/business/display/b;->b:Lcom/haima/hmcp/business/display/DataProcessor;

    iput p2, p0, Lcom/haima/hmcp/business/display/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/b;->b:Lcom/haima/hmcp/business/display/DataProcessor;

    iget v1, p0, Lcom/haima/hmcp/business/display/b;->c:I

    invoke-static {v0, v1}, Lcom/haima/hmcp/business/display/DataProcessor;->c(Lcom/haima/hmcp/business/display/DataProcessor;I)V

    return-void
.end method
