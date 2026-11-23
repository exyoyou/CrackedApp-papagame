.class final Lcom/windmill/gromore/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/gromore/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/reflect/Field;

.field b:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/gromore/p$a;->a:Ljava/lang/reflect/Field;

    iput p2, p0, Lcom/windmill/gromore/p$a;->b:I

    return-void
.end method
