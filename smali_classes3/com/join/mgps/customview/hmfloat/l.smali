.class public final synthetic Lcom/join/mgps/customview/hmfloat/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/customview/hmfloat/v;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/l;->b:Lcom/join/mgps/customview/hmfloat/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/l;->b:Lcom/join/mgps/customview/hmfloat/v;

    invoke-static {v0}, Lcom/join/mgps/customview/hmfloat/v;->h(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method
