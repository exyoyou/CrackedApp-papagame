.class public final Lcom/android/dx/cf/attrib/AttAnnotationDefault;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "SourceFile"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "AnnotationDefault"


# instance fields
.field private final byteLength:I

.field private final value:Lcom/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/Constant;I)V
    .locals 1

    .line 1
    const-string v0, "AnnotationDefault"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/dx/cf/attrib/AttAnnotationDefault;->value:Lcom/android/dx/rop/cst/Constant;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/dx/cf/attrib/AttAnnotationDefault;->byteLength:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string p2, "value == null"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/attrib/AttAnnotationDefault;->byteLength:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    return v0
.end method

.method public getValue()Lcom/android/dx/rop/cst/Constant;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttAnnotationDefault;->value:Lcom/android/dx/rop/cst/Constant;

    .line 2
    .line 3
    return-object v0
.end method
