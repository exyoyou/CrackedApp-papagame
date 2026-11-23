.class public final synthetic Lcom/haima/hmcp/business/display/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/business/display/DataProcessor;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/business/display/DataProcessor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/business/display/a;->b:Lcom/haima/hmcp/business/display/DataProcessor;

    iput-object p2, p0, Lcom/haima/hmcp/business/display/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/a;->b:Lcom/haima/hmcp/business/display/DataProcessor;

    iget-object v1, p0, Lcom/haima/hmcp/business/display/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/haima/hmcp/business/display/DataProcessor;->a(Lcom/haima/hmcp/business/display/DataProcessor;Ljava/lang/String;)V

    return-void
.end method
