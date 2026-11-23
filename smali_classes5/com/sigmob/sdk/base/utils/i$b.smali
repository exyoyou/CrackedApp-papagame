.class Lcom/sigmob/sdk/base/utils/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:[Ljava/lang/reflect/Field;

.field final b:[Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fields",
            "methods"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/i$b;->a:[Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/sigmob/sdk/base/utils/i$b;->b:[Ljava/lang/reflect/Method;

    return-void
.end method
