#ifndef JIT_MACRO
#define JIT_MACRO 1

#define APPEND_FUNC0(y, x)   \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    len += x##_size()

#define APPEND_FUNC1(y, x, a0)  \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    len += x##_size()

#define APPEND_FUNC2(y, x, a0, a1) \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    inject_arg(y, len + x##_varB_offset(), (PTR)a1); \
    len += x##_size()

#define APPEND_FUNC3(y, x, a0, a1, a2) \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    inject_arg(y, len + x##_varB_offset(), (PTR)a1); \
    inject_arg(y, len + x##_varC_offset(), (PTR)a2); \
    len += x##_size()

#define APPEND_FUNC4(y, x, a0, a1, a2, a3) \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    inject_arg(y, len + x##_varB_offset(), (PTR)a1); \
    inject_arg(y, len + x##_varC_offset(), (PTR)a2); \
    inject_arg(y, len + x##_varD_offset(), (PTR)a3); \
    len += x##_size()

#define APPEND_FUNC5(y, x, a0, a1, a2, a3, a4) \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    inject_arg(y, len + x##_varB_offset(), (PTR)a1); \
    inject_arg(y, len + x##_varC_offset(), (PTR)a2); \
    inject_arg(y, len + x##_varD_offset(), (PTR)a3); \
    inject_arg(y, len + x##_varE_offset(), (PTR)a4); \
    len += x##_size()

#define APPEND_FUNC6(y, x, a0, a1, a2, a3, a4, a5) \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    inject_arg(y, len + x##_varB_offset(), (PTR)a1); \
    inject_arg(y, len + x##_varC_offset(), (PTR)a2); \
    inject_arg(y, len + x##_varD_offset(), (PTR)a3); \
    inject_arg(y, len + x##_varE_offset(), (PTR)a4); \
    inject_arg(y, len + x##_varF_offset(), (PTR)a5); \
    len += x##_size()

#define APPEND_FUNC7(y, x, a0, a1, a2, a3, a4, a5, a6) \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    inject_arg(y, len + x##_varB_offset(), (PTR)a1); \
    inject_arg(y, len + x##_varC_offset(), (PTR)a2); \
    inject_arg(y, len + x##_varD_offset(), (PTR)a3); \
    inject_arg(y, len + x##_varE_offset(), (PTR)a4); \
    inject_arg(y, len + x##_varF_offset(), (PTR)a5); \
    inject_arg(y, len + x##_varG_offset(), (PTR)a6); \
    len += x##_size()

#define APPEND_FUNC8(y, x, a0, a1, a2, a3, a4, a5, a6, a7) \
    memcpy((PTR*)((PTR)y + len), reinterpret_cast<long long*>( x ), x##_size()); \
    inject_arg(y, len + x##_varA_offset(), (PTR)a0); \
    inject_arg(y, len + x##_varB_offset(), (PTR)a1); \
    inject_arg(y, len + x##_varC_offset(), (PTR)a2); \
    inject_arg(y, len + x##_varD_offset(), (PTR)a3); \
    inject_arg(y, len + x##_varE_offset(), (PTR)a4); \
    inject_arg(y, len + x##_varF_offset(), (PTR)a5); \
    inject_arg(y, len + x##_varG_offset(), (PTR)a6); \
    inject_arg(y, len + x##_varH_offset(), (PTR)a7); \
    len += x##_size()

#define _MUTE_UNUSED_RESULT(x)  if(x){}
#endif // JIT_MACRO
