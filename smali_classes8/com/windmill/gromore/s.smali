.class public final synthetic Lcom/windmill/gromore/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/windmill/gromore/a;

.field public final synthetic c:Lcom/windmill/gromore/q;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/gromore/a;Lcom/windmill/gromore/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/gromore/s;->b:Lcom/windmill/gromore/a;

    iput-object p2, p0, Lcom/windmill/gromore/s;->c:Lcom/windmill/gromore/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/gromore/s;->b:Lcom/windmill/gromore/a;

    iget-object v1, p0, Lcom/windmill/gromore/s;->c:Lcom/windmill/gromore/q;

    invoke-static {v0, v1}, Lcom/windmill/gromore/a;->a(Lcom/windmill/gromore/a;Lcom/windmill/gromore/q;)V

    return-void
.end method
